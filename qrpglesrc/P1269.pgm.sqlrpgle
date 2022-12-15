**free

ctl-opt dftactgrp(*no);

dcl-pi P1269;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P121.rpgleinc'
/copy 'qrpgleref/P566.rpgleinc'
/copy 'qrpgleref/P1137.rpgleinc'

dcl-ds T328 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T328 FROM T328 LIMIT 1;

theCharVar = 'Hello from P1269';
dsply theCharVar;
P121();
P566();
P1137();
return;