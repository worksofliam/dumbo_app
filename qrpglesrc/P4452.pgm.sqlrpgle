**free

ctl-opt dftactgrp(*no);

dcl-pi P4452;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P877.rpgleinc'
/copy 'qrpgleref/P644.rpgleinc'
/copy 'qrpgleref/P2121.rpgleinc'

dcl-ds T1493 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1493 FROM T1493 LIMIT 1;

theCharVar = 'Hello from P4452';
dsply theCharVar;
P877();
P644();
P2121();
return;