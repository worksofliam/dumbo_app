**free

ctl-opt dftactgrp(*no);

dcl-pi P380;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P304.rpgleinc'
/copy 'qrpgleref/P256.rpgleinc'
/copy 'qrpgleref/P184.rpgleinc'

dcl-ds T223 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T223 FROM T223 LIMIT 1;

theCharVar = 'Hello from P380';
dsply theCharVar;
P304();
P256();
P184();
return;