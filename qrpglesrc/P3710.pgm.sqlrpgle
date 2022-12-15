**free

ctl-opt dftactgrp(*no);

dcl-pi P3710;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2511.rpgleinc'
/copy 'qrpgleref/P2678.rpgleinc'
/copy 'qrpgleref/P3014.rpgleinc'

dcl-ds T458 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T458 FROM T458 LIMIT 1;

theCharVar = 'Hello from P3710';
dsply theCharVar;
P2511();
P2678();
P3014();
return;