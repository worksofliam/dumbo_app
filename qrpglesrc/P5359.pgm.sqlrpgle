**free

ctl-opt dftactgrp(*no);

dcl-pi P5359;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1751.rpgleinc'
/copy 'qrpgleref/P3201.rpgleinc'
/copy 'qrpgleref/P2577.rpgleinc'

dcl-ds T734 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T734 FROM T734 LIMIT 1;

theCharVar = 'Hello from P5359';
dsply theCharVar;
P1751();
P3201();
P2577();
return;