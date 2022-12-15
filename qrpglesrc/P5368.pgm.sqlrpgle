**free

ctl-opt dftactgrp(*no);

dcl-pi P5368;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1089.rpgleinc'
/copy 'qrpgleref/P4795.rpgleinc'
/copy 'qrpgleref/P2074.rpgleinc'

dcl-ds T655 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T655 FROM T655 LIMIT 1;

theCharVar = 'Hello from P5368';
dsply theCharVar;
P1089();
P4795();
P2074();
return;