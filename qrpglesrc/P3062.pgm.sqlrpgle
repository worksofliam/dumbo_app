**free

ctl-opt dftactgrp(*no);

dcl-pi P3062;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2560.rpgleinc'
/copy 'qrpgleref/P958.rpgleinc'
/copy 'qrpgleref/P2715.rpgleinc'

dcl-ds T744 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T744 FROM T744 LIMIT 1;

theCharVar = 'Hello from P3062';
dsply theCharVar;
P2560();
P958();
P2715();
return;