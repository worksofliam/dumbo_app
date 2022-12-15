**free

ctl-opt dftactgrp(*no);

dcl-pi P1463;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P700.rpgleinc'
/copy 'qrpgleref/P150.rpgleinc'
/copy 'qrpgleref/P566.rpgleinc'

dcl-ds T1860 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1860 FROM T1860 LIMIT 1;

theCharVar = 'Hello from P1463';
dsply theCharVar;
P700();
P150();
P566();
return;