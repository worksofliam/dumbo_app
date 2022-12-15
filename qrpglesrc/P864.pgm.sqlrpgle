**free

ctl-opt dftactgrp(*no);

dcl-pi P864;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P700.rpgleinc'
/copy 'qrpgleref/P755.rpgleinc'
/copy 'qrpgleref/P680.rpgleinc'

dcl-ds T1196 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1196 FROM T1196 LIMIT 1;

theCharVar = 'Hello from P864';
dsply theCharVar;
P700();
P755();
P680();
return;