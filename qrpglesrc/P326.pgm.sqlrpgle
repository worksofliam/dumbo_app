**free

ctl-opt dftactgrp(*no);

dcl-pi P326;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P213.rpgleinc'
/copy 'qrpgleref/P180.rpgleinc'
/copy 'qrpgleref/P299.rpgleinc'

dcl-ds T651 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T651 FROM T651 LIMIT 1;

theCharVar = 'Hello from P326';
dsply theCharVar;
P213();
P180();
P299();
return;