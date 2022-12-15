**free

ctl-opt dftactgrp(*no);

dcl-pi P560;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P207.rpgleinc'
/copy 'qrpgleref/P358.rpgleinc'
/copy 'qrpgleref/P155.rpgleinc'

dcl-ds T35 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T35 FROM T35 LIMIT 1;

theCharVar = 'Hello from P560';
dsply theCharVar;
P207();
P358();
P155();
return;