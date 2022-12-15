**free

ctl-opt dftactgrp(*no);

dcl-pi P4581;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2907.rpgleinc'
/copy 'qrpgleref/P826.rpgleinc'
/copy 'qrpgleref/P2378.rpgleinc'

dcl-ds T662 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T662 FROM T662 LIMIT 1;

theCharVar = 'Hello from P4581';
dsply theCharVar;
P2907();
P826();
P2378();
return;