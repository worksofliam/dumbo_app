**free

ctl-opt dftactgrp(*no);

dcl-pi P5138;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1079.rpgleinc'
/copy 'qrpgleref/P4905.rpgleinc'
/copy 'qrpgleref/P1709.rpgleinc'

dcl-ds theTable extname('T1484') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1484 LIMIT 1;

theCharVar = 'Hello from P5138';
dsply theCharVar;
P1079();
P4905();
P1709();
return;