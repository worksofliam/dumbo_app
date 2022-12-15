**free

ctl-opt dftactgrp(*no);

dcl-pi P3087;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2073.rpgleinc'
/copy 'qrpgleref/P2058.rpgleinc'
/copy 'qrpgleref/P925.rpgleinc'

dcl-ds T286 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T286 FROM T286 LIMIT 1;

theCharVar = 'Hello from P3087';
dsply theCharVar;
P2073();
P2058();
P925();
return;