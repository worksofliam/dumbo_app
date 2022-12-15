**free

ctl-opt dftactgrp(*no);

dcl-pi P4402;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1201.rpgleinc'
/copy 'qrpgleref/P2713.rpgleinc'
/copy 'qrpgleref/P3174.rpgleinc'

dcl-ds T1120 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1120 FROM T1120 LIMIT 1;

theCharVar = 'Hello from P4402';
dsply theCharVar;
P1201();
P2713();
P3174();
return;