**free

ctl-opt dftactgrp(*no);

dcl-pi P44;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P38.rpgleinc'
/copy 'qrpgleref/P35.rpgleinc'
/copy 'qrpgleref/P5.rpgleinc'

dcl-ds T1387 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1387 FROM T1387 LIMIT 1;

theCharVar = 'Hello from P44';
dsply theCharVar;
P38();
P35();
P5();
return;