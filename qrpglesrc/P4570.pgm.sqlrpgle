**free

ctl-opt dftactgrp(*no);

dcl-pi P4570;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2199.rpgleinc'
/copy 'qrpgleref/P3924.rpgleinc'
/copy 'qrpgleref/P3830.rpgleinc'

dcl-ds theTable extname('T1652') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1652 LIMIT 1;

theCharVar = 'Hello from P4570';
dsply theCharVar;
callp localProc();
P2199();
P3924();
P3830();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4570 in the procedure';
end-proc;