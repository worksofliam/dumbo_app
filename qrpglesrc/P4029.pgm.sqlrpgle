**free

ctl-opt dftactgrp(*no);

dcl-pi P4029;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2125.rpgleinc'
/copy 'qrpgleref/P3967.rpgleinc'
/copy 'qrpgleref/P3930.rpgleinc'

dcl-ds T495 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T495 FROM T495 LIMIT 1;

theCharVar = 'Hello from P4029';
dsply theCharVar;
P2125();
P3967();
P3930();
return;