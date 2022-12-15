**free

ctl-opt dftactgrp(*no);

dcl-pi P1246;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P928.rpgleinc'
/copy 'qrpgleref/P684.rpgleinc'
/copy 'qrpgleref/P112.rpgleinc'

dcl-ds T686 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T686 FROM T686 LIMIT 1;

theCharVar = 'Hello from P1246';
dsply theCharVar;
P928();
P684();
P112();
return;