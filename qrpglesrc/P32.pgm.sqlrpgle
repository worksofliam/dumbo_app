**free

ctl-opt dftactgrp(*no);

dcl-pi P32;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'

dcl-ds T880 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T880 FROM T880 LIMIT 1;

theCharVar = 'Hello from P32';
dsply theCharVar;
P3();
P14();
P29();
return;