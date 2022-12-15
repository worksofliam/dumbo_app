**free

ctl-opt dftactgrp(*no);

dcl-pi P343;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P29.rpgleinc'
/copy 'qrpgleref/P137.rpgleinc'
/copy 'qrpgleref/P304.rpgleinc'

dcl-ds T355 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T355 FROM T355 LIMIT 1;

theCharVar = 'Hello from P343';
dsply theCharVar;
P29();
P137();
P304();
return;