**free

ctl-opt dftactgrp(*no);

dcl-pi P1359;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P372.rpgleinc'
/copy 'qrpgleref/P951.rpgleinc'
/copy 'qrpgleref/P761.rpgleinc'

dcl-ds T845 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T845 FROM T845 LIMIT 1;

theCharVar = 'Hello from P1359';
dsply theCharVar;
P372();
P951();
P761();
return;