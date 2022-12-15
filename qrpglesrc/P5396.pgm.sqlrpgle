**free

ctl-opt dftactgrp(*no);

dcl-pi P5396;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P193.rpgleinc'
/copy 'qrpgleref/P2008.rpgleinc'
/copy 'qrpgleref/P3857.rpgleinc'

dcl-ds T1051 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1051 FROM T1051 LIMIT 1;

theCharVar = 'Hello from P5396';
dsply theCharVar;
P193();
P2008();
P3857();
return;