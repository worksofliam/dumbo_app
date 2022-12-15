**free

ctl-opt dftactgrp(*no);

dcl-pi P2778;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2295.rpgleinc'
/copy 'qrpgleref/P2248.rpgleinc'
/copy 'qrpgleref/P541.rpgleinc'

dcl-ds theTable extname('T674') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T674 LIMIT 1;

theCharVar = 'Hello from P2778';
dsply theCharVar;
P2295();
P2248();
P541();
return;