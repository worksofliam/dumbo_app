**free

ctl-opt dftactgrp(*no);

dcl-pi P2911;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1048.rpgleinc'
/copy 'qrpgleref/P548.rpgleinc'
/copy 'qrpgleref/P2029.rpgleinc'

dcl-ds T633 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T633 FROM T633 LIMIT 1;

theCharVar = 'Hello from P2911';
dsply theCharVar;
P1048();
P548();
P2029();
return;