**free

ctl-opt dftactgrp(*no);

dcl-pi P1769;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P276.rpgleinc'
/copy 'qrpgleref/P1100.rpgleinc'
/copy 'qrpgleref/P532.rpgleinc'

dcl-ds T615 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T615 FROM T615 LIMIT 1;

theCharVar = 'Hello from P1769';
dsply theCharVar;
P276();
P1100();
P532();
return;