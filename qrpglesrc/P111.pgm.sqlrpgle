**free

ctl-opt dftactgrp(*no);

dcl-pi P111;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P49.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'

dcl-ds T745 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T745 FROM T745 LIMIT 1;

theCharVar = 'Hello from P111';
dsply theCharVar;
P49();
P2();
return;