**free

ctl-opt dftactgrp(*no);

dcl-pi P710;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P298.rpgleinc'
/copy 'qrpgleref/P458.rpgleinc'
/copy 'qrpgleref/P614.rpgleinc'

dcl-ds T372 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T372 FROM T372 LIMIT 1;

theCharVar = 'Hello from P710';
dsply theCharVar;
P298();
P458();
P614();
return;