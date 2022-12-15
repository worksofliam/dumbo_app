**free

ctl-opt dftactgrp(*no);

dcl-pi P4093;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1604.rpgleinc'
/copy 'qrpgleref/P2806.rpgleinc'
/copy 'qrpgleref/P3794.rpgleinc'

dcl-ds T1042 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1042 FROM T1042 LIMIT 1;

theCharVar = 'Hello from P4093';
dsply theCharVar;
P1604();
P2806();
P3794();
return;