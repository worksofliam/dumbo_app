**free

ctl-opt dftactgrp(*no);

dcl-pi P1652;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P182.rpgleinc'
/copy 'qrpgleref/P531.rpgleinc'
/copy 'qrpgleref/P903.rpgleinc'

dcl-ds T1351 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1351 FROM T1351 LIMIT 1;

theCharVar = 'Hello from P1652';
dsply theCharVar;
P182();
P531();
P903();
return;