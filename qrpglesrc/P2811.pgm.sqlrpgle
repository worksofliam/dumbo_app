**free

ctl-opt dftactgrp(*no);

dcl-pi P2811;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1083.rpgleinc'
/copy 'qrpgleref/P2369.rpgleinc'
/copy 'qrpgleref/P1062.rpgleinc'

dcl-ds T138 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T138 FROM T138 LIMIT 1;

theCharVar = 'Hello from P2811';
dsply theCharVar;
P1083();
P2369();
P1062();
return;