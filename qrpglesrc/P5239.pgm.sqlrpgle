**free

ctl-opt dftactgrp(*no);

dcl-pi P5239;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3804.rpgleinc'
/copy 'qrpgleref/P4020.rpgleinc'
/copy 'qrpgleref/P913.rpgleinc'

dcl-ds T26 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T26 FROM T26 LIMIT 1;

theCharVar = 'Hello from P5239';
dsply theCharVar;
P3804();
P4020();
P913();
return;