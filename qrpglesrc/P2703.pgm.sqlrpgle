**free

ctl-opt dftactgrp(*no);

dcl-pi P2703;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2312.rpgleinc'
/copy 'qrpgleref/P403.rpgleinc'
/copy 'qrpgleref/P2179.rpgleinc'

dcl-ds T674 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T674 FROM T674 LIMIT 1;

theCharVar = 'Hello from P2703';
dsply theCharVar;
P2312();
P403();
P2179();
return;