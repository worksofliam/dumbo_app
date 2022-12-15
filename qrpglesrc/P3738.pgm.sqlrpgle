**free

ctl-opt dftactgrp(*no);

dcl-pi P3738;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2376.rpgleinc'
/copy 'qrpgleref/P2062.rpgleinc'
/copy 'qrpgleref/P2350.rpgleinc'

dcl-ds T665 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T665 FROM T665 LIMIT 1;

theCharVar = 'Hello from P3738';
dsply theCharVar;
P2376();
P2062();
P2350();
return;