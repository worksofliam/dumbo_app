**free

ctl-opt dftactgrp(*no);

dcl-pi P1903;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1828.rpgleinc'
/copy 'qrpgleref/P632.rpgleinc'
/copy 'qrpgleref/P903.rpgleinc'

dcl-ds T1197 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1197 FROM T1197 LIMIT 1;

theCharVar = 'Hello from P1903';
dsply theCharVar;
P1828();
P632();
P903();
return;