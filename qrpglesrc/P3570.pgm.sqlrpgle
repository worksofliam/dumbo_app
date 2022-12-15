**free

ctl-opt dftactgrp(*no);

dcl-pi P3570;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1213.rpgleinc'
/copy 'qrpgleref/P695.rpgleinc'
/copy 'qrpgleref/P1136.rpgleinc'

dcl-ds T726 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T726 FROM T726 LIMIT 1;

theCharVar = 'Hello from P3570';
dsply theCharVar;
callp localProc();
P1213();
P695();
P1136();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3570 in the procedure';
end-proc;