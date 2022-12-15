**free

ctl-opt dftactgrp(*no);

dcl-pi P355;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P111.rpgleinc'
/copy 'qrpgleref/P345.rpgleinc'
/copy 'qrpgleref/P125.rpgleinc'

dcl-ds T363 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T363 FROM T363 LIMIT 1;

theCharVar = 'Hello from P355';
dsply theCharVar;
P111();
P345();
P125();
return;