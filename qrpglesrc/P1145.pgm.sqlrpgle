**free

ctl-opt dftactgrp(*no);

dcl-pi P1145;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P132.rpgleinc'
/copy 'qrpgleref/P734.rpgleinc'
/copy 'qrpgleref/P88.rpgleinc'

dcl-ds T599 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T599 FROM T599 LIMIT 1;

theCharVar = 'Hello from P1145';
dsply theCharVar;
P132();
P734();
P88();
return;