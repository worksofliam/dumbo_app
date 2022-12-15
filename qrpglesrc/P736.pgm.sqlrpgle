**free

ctl-opt dftactgrp(*no);

dcl-pi P736;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P518.rpgleinc'
/copy 'qrpgleref/P677.rpgleinc'
/copy 'qrpgleref/P317.rpgleinc'

dcl-ds T440 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T440 FROM T440 LIMIT 1;

theCharVar = 'Hello from P736';
dsply theCharVar;
P518();
P677();
P317();
return;