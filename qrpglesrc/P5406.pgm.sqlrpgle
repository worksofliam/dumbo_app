**free

ctl-opt dftactgrp(*no);

dcl-pi P5406;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2987.rpgleinc'
/copy 'qrpgleref/P1740.rpgleinc'
/copy 'qrpgleref/P4578.rpgleinc'

dcl-ds T1005 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1005 FROM T1005 LIMIT 1;

theCharVar = 'Hello from P5406';
dsply theCharVar;
P2987();
P1740();
P4578();
return;