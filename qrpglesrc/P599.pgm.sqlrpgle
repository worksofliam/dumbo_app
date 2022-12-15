**free

ctl-opt dftactgrp(*no);

dcl-pi P599;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P304.rpgleinc'
/copy 'qrpgleref/P293.rpgleinc'
/copy 'qrpgleref/P298.rpgleinc'

dcl-ds T289 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T289 FROM T289 LIMIT 1;

theCharVar = 'Hello from P599';
dsply theCharVar;
P304();
P293();
P298();
return;