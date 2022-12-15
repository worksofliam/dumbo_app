**free

ctl-opt dftactgrp(*no);

dcl-pi P2722;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P524.rpgleinc'
/copy 'qrpgleref/P2322.rpgleinc'
/copy 'qrpgleref/P571.rpgleinc'

dcl-ds T1833 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1833 FROM T1833 LIMIT 1;

theCharVar = 'Hello from P2722';
dsply theCharVar;
P524();
P2322();
P571();
return;