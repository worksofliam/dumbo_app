**free

ctl-opt dftactgrp(*no);

dcl-pi P4028;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3306.rpgleinc'
/copy 'qrpgleref/P3967.rpgleinc'
/copy 'qrpgleref/P1992.rpgleinc'

dcl-ds T1785 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1785 FROM T1785 LIMIT 1;

theCharVar = 'Hello from P4028';
dsply theCharVar;
callp localProc();
P3306();
P3967();
P1992();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4028 in the procedure';
end-proc;