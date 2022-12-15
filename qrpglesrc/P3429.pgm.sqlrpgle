**free

ctl-opt dftactgrp(*no);

dcl-pi P3429;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1297.rpgleinc'
/copy 'qrpgleref/P2073.rpgleinc'
/copy 'qrpgleref/P2150.rpgleinc'

dcl-ds T640 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T640 FROM T640 LIMIT 1;

theCharVar = 'Hello from P3429';
dsply theCharVar;
P1297();
P2073();
P2150();
return;