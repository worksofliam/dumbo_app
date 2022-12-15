**free

ctl-opt dftactgrp(*no);

dcl-pi P228;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P114.rpgleinc'
/copy 'qrpgleref/P74.rpgleinc'
/copy 'qrpgleref/P46.rpgleinc'

dcl-ds T385 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T385 FROM T385 LIMIT 1;

theCharVar = 'Hello from P228';
dsply theCharVar;
P114();
P74();
P46();
return;