**free

ctl-opt dftactgrp(*no);

dcl-pi P5128;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5125.rpgleinc'
/copy 'qrpgleref/P1516.rpgleinc'
/copy 'qrpgleref/P4848.rpgleinc'

dcl-ds T873 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T873 FROM T873 LIMIT 1;

theCharVar = 'Hello from P5128';
dsply theCharVar;
P5125();
P1516();
P4848();
return;