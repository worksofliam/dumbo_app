**free

ctl-opt dftactgrp(*no);

dcl-pi P663;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P416.rpgleinc'
/copy 'qrpgleref/P137.rpgleinc'
/copy 'qrpgleref/P443.rpgleinc'

dcl-ds T548 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T548 FROM T548 LIMIT 1;

theCharVar = 'Hello from P663';
dsply theCharVar;
P416();
P137();
P443();
return;