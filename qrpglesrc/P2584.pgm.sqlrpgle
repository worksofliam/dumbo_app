**free

ctl-opt dftactgrp(*no);

dcl-pi P2584;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1955.rpgleinc'
/copy 'qrpgleref/P84.rpgleinc'
/copy 'qrpgleref/P1522.rpgleinc'

dcl-ds T805 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T805 FROM T805 LIMIT 1;

theCharVar = 'Hello from P2584';
dsply theCharVar;
P1955();
P84();
P1522();
return;