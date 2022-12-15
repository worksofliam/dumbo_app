**free

ctl-opt dftactgrp(*no);

dcl-pi P2639;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P633.rpgleinc'
/copy 'qrpgleref/P2466.rpgleinc'
/copy 'qrpgleref/P792.rpgleinc'

dcl-ds T1205 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1205 FROM T1205 LIMIT 1;

theCharVar = 'Hello from P2639';
dsply theCharVar;
P633();
P2466();
P792();
return;