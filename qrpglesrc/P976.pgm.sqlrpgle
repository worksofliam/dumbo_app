**free

ctl-opt dftactgrp(*no);

dcl-pi P976;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P470.rpgleinc'
/copy 'qrpgleref/P439.rpgleinc'
/copy 'qrpgleref/P883.rpgleinc'

dcl-ds T1194 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1194 FROM T1194 LIMIT 1;

theCharVar = 'Hello from P976';
dsply theCharVar;
P470();
P439();
P883();
return;