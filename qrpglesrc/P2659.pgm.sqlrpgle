**free

ctl-opt dftactgrp(*no);

dcl-pi P2659;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P582.rpgleinc'
/copy 'qrpgleref/P526.rpgleinc'
/copy 'qrpgleref/P2561.rpgleinc'

dcl-ds T165 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T165 FROM T165 LIMIT 1;

theCharVar = 'Hello from P2659';
dsply theCharVar;
P582();
P526();
P2561();
return;