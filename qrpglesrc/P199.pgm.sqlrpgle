**free

ctl-opt dftactgrp(*no);

dcl-pi P199;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2.rpgleinc'
/copy 'qrpgleref/P103.rpgleinc'
/copy 'qrpgleref/P15.rpgleinc'

dcl-ds T18 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T18 FROM T18 LIMIT 1;

theCharVar = 'Hello from P199';
dsply theCharVar;
P2();
P103();
P15();
return;