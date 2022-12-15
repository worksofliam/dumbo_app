**free

ctl-opt dftactgrp(*no);

dcl-pi P1362;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P377.rpgleinc'
/copy 'qrpgleref/P395.rpgleinc'
/copy 'qrpgleref/P594.rpgleinc'

dcl-ds T236 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T236 FROM T236 LIMIT 1;

theCharVar = 'Hello from P1362';
dsply theCharVar;
P377();
P395();
P594();
return;