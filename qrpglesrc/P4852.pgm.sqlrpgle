**free

ctl-opt dftactgrp(*no);

dcl-pi P4852;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1897.rpgleinc'
/copy 'qrpgleref/P3013.rpgleinc'
/copy 'qrpgleref/P1727.rpgleinc'

dcl-ds T1229 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1229 FROM T1229 LIMIT 1;

theCharVar = 'Hello from P4852';
dsply theCharVar;
callp localProc();
P1897();
P3013();
P1727();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4852 in the procedure';
end-proc;