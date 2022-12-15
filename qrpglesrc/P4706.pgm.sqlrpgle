**free

ctl-opt dftactgrp(*no);

dcl-pi P4706;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3897.rpgleinc'
/copy 'qrpgleref/P2147.rpgleinc'
/copy 'qrpgleref/P4396.rpgleinc'

dcl-ds T1003 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1003 FROM T1003 LIMIT 1;

theCharVar = 'Hello from P4706';
dsply theCharVar;
P3897();
P2147();
P4396();
return;