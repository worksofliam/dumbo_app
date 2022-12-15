**free

ctl-opt dftactgrp(*no);

dcl-pi P3139;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2213.rpgleinc'
/copy 'qrpgleref/P614.rpgleinc'
/copy 'qrpgleref/P611.rpgleinc'

dcl-ds T1479 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1479 FROM T1479 LIMIT 1;

theCharVar = 'Hello from P3139';
dsply theCharVar;
P2213();
P614();
P611();
return;