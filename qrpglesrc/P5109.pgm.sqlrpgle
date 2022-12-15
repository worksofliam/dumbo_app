**free

ctl-opt dftactgrp(*no);

dcl-pi P5109;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2834.rpgleinc'
/copy 'qrpgleref/P4557.rpgleinc'
/copy 'qrpgleref/P694.rpgleinc'

dcl-ds T1451 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1451 FROM T1451 LIMIT 1;

theCharVar = 'Hello from P5109';
dsply theCharVar;
P2834();
P4557();
P694();
return;