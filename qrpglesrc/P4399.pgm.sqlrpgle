**free

ctl-opt dftactgrp(*no);

dcl-pi P4399;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P641.rpgleinc'
/copy 'qrpgleref/P3589.rpgleinc'
/copy 'qrpgleref/P4227.rpgleinc'

dcl-ds T1242 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1242 FROM T1242 LIMIT 1;

theCharVar = 'Hello from P4399';
dsply theCharVar;
P641();
P3589();
P4227();
return;