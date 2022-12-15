**free

ctl-opt dftactgrp(*no);

dcl-pi P230;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P122.rpgleinc'
/copy 'qrpgleref/P217.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'

dcl-ds T112 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T112 FROM T112 LIMIT 1;

theCharVar = 'Hello from P230';
dsply theCharVar;
P122();
P217();
P8();
return;