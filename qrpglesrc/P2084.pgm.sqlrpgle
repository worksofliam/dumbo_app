**free

ctl-opt dftactgrp(*no);

dcl-pi P2084;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P490.rpgleinc'
/copy 'qrpgleref/P2057.rpgleinc'
/copy 'qrpgleref/P1703.rpgleinc'

dcl-ds T824 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T824 FROM T824 LIMIT 1;

theCharVar = 'Hello from P2084';
dsply theCharVar;
P490();
P2057();
P1703();
return;