**free

ctl-opt dftactgrp(*no);

dcl-pi P711;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P253.rpgleinc'
/copy 'qrpgleref/P628.rpgleinc'
/copy 'qrpgleref/P21.rpgleinc'

dcl-ds T149 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T149 FROM T149 LIMIT 1;

theCharVar = 'Hello from P711';
dsply theCharVar;
P253();
P628();
P21();
return;